"""Hotfix Noto Sans Duployan"""
import requests
import argparse
from glyphsets import unicodes_per_glyphset
from fontTools.subset import Subsetter
from fontTools.merge import Merger
from fontTools.ttLib import TTFont
from gftools.fix import fix_font


unicodes = unicodes_per_glyphset("GF_Latin_Core")

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

ttfont["OS/2"].usWinAscent = 1729
ttfont["OS/2"].usWinDescent = 833
ttfont["OS/2"].sTypoAscender = 1069
ttfont["OS/2"].sTypoDescender = -293
ttfont["hhea"].ascender = 1069
ttfont["hhea"].descender = -293

ttfont.save(args.output)
