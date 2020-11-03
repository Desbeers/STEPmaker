#! /bin/zsh

. wmtheme/wmcolors.zsh wmtheme/generated_css/wmtheme.css

cat <<EOF > build/windowmaker/STEPmaker.themed/style
{
  CClipTitleColor = "$BaseDark60";
  ClipTitleColor = "$BaseDark80";
  ClipTitleFont = "Cantarell:slant=0:weight=200:width=100:pixelsize=13";
  FrameBorderColor = "$BaseDark20";
  FrameFocusedBorderColor = "$BaseDark20";
  FrameSelectedBorderColor = "$BaseDark20";
  HighlightColor = "$Active";
  HighlightTextColor = "$ActiveText";
  IconBack = (mdgradient, "$Base", "$BaseDark40", "$BaseDark30", "$BaseDark40", "$BaseDark30", "$BaseDark40");
  IconTitleBack = "$Base"; 
  IconTitleColor = "$BaseDark60";
  IconTitleFont = "Cantarell:slant=0:weight=80:width=100:pixelsize=9";
  LargeDisplayFont = "Cantarell:slant=0:weight=200:width=100:pixelsize=24";
  MenuDisabledColor = "$BaseDark40";
  MenuStyle = normal;
  MenuTextBack = (hgradient, "$BaseDark10", "$Base");
  MenuTextColor = "$BaseDark80";
  MenuTextExtendSpace = 1;
  MenuTextFont = "Cantarell:slant=0:weight=80:width=100:pixelsize=13";
  MenuTitleBack = (hgradient, "$BaseDark40", "$BaseDark20");
  MenuTitleColor = "$BaseLight20";
  MenuTitleExtendSpace = 0;
  MenuTitleFont = "Cantarell:slant=0:weight=200:width=100:pixelsize=13";
  FTitleBack = (hgradient, "$BaseDark40", "$BaseDark30");
  FTitleColor = "$FTitleColor";
  PTitleBack = (solid, "$BaseDark40");
  PTitleColor = "$BaseDark60";
  TitleJustify = center;
  UTitleBack = (dgradient, "$BaseDark40", "$BaseDark40");
  UTitleColor = "$Base";
  ResizebarBack = (solid, "$BaseDark20");
  WindowTitleExtendSpace = 0;
  WindowTitleFont = "Cantarell:slant=0:weight=200:width=100:pixelsize=13";
  WorkspaceBack = (mdgradient, "$Base", "$BaseDark40", "$BaseDark30", "$BaseDark40", "$BaseDark30", "$BaseDark40");
}
EOF
