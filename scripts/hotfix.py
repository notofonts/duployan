"""Hotfix Noto Sans Duployan"""
import requests
import argparse
from glyphsets import GFGlyphData
from fontTools.subset import Subsetter
from fontTools.merge import Merger
from fontTools.ttLib import TTFont
from gftools.fix import fix_font


unicodes = [
    x["unicode"]
    for x in GFGlyphData.glyphs_in_glyphsets(["GF_Latin_Core"])
    if x["unicode"]
]

NOTO_SANS_DEV = "https://notofonts.github.io/latin-greek-cyrillic/fonts/NotoSans/hinted/ttf/NotoSans-Regular.ttf"
NOTO_SANS_DEV_BOLD = "https://notofonts.github.io/latin-greek-cyrillic/fonts/NotoSans/hinted/ttf/NotoSans-Bold.ttf"

parser = argparse.ArgumentParser(description='Hotfix Noto Sans Duployan')
parser.add_argument('--output', '-o', help="output font file")
parser.add_argument('font', help='font file')
args = parser.parse_args()

if 'Regular' in args.font:
    url = NOTO_SANS_DEV
elif 'Bold' in args.font:
    url = NOTO_SANS_DEV_BOLD

r = requests.get(url)
# Save content
with open("Noto.ttf", 'wb') as f:
    f.write(r.content)

notosans = TTFont("Noto.ttf")
subsetter = Subsetter()
subsetter.populate(unicodes=unicodes)
subsetter.subset(notosans)
notosans.save("Noto.ttf")
merger = Merger()
ttfont = merger.merge([args.font, "Noto.ttf"])
fix_font(ttfont, include_source_fixes=True)

ttfont["OS/2"].usWinAscent = 1672
ttfont["OS/2"].usWinDescent = 357

ttfont.save(args.output)