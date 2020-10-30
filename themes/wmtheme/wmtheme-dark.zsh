#! /bin/zsh

. wmtheme/wmcolors.zsh wmtheme/wmtheme-dark.css

cat <<EOF > build/windowmaker/STEPmakerDARK.themed/style
{
  CClipTitleColor = "$BaseLight20";
  ClipTitleColor = "$BaseLight40";
  ClipTitleFont = "Cantarell:slant=0:weight=200:width=100:pixelsize=13";
  FrameBorderColor = "$BaseDark20";
  FrameFocusedBorderColor = "$BaseDark20";
  FrameSelectedBorderColor = "$BaseDark20";
  HighlightColor = "$Active";
  HighlightTextColor = "$ActiveText";
  IconBack = (mdgradient, "$BaseLight20", "$BaseDark30", "$BaseDark20", "$BaseDark30", "$BaseDark20", "$BaseDark30");
  IconTitleBack = "$Base"; 
  IconTitleColor = "$BaseDark60";
  IconTitleFont = "Cantarell:slant=0:weight=80:width=100:pixelsize=9";
  LargeDisplayFont = "Cantarell:slant=0:weight=200:width=100:pixelsize=24";
  MenuDisabledColor = "$BaseDark40";
  MenuStyle = normal;
  MenuTextBack = (hgradient, "$BaseDark10", "$Base");
  MenuTextColor = "$BaseLight60";
  MenuTextExtendSpace = 1;
  MenuTextFont = "Cantarell:slant=0:weight=80:width=100:pixelsize=13";
  MenuTitleBack = (hgradient, "$BaseDark30", "$BaseDark20");
  MenuTitleColor = "$BaseLight20";
  MenuTitleExtendSpace = 0;
  MenuTitleFont = "Cantarell:slant=0:weight=200:width=100:pixelsize=13";
  FTitleBack = (hgradient, "$BaseDark20", "$BaseDark10");
  FTitleColor = "$FTitleColor";
  PTitleBack = (hgradient, "$BaseDark20", "$BaseDark10");
  PTitleColor = "$BaseLight10";
  TitleJustify = center;
  UTitleBack = (dgradient, "$BaseDark40", "$BaseDark40");
  UTitleColor = "$UTitleColor";
  ResizebarBack = (solid, "$BaseDark10");
  WindowTitleExtendSpace = 0;
  WindowTitleFont = "Cantarell:slant=0:weight=200:width=100:pixelsize=13";
  WorkspaceBack = (dgradient, "$BaseDark20", "$BaseDark60");
}
EOF
