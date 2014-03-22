#/**********************************************************\ 
#
# Auto-Generated Plugin Configuration file
# for Plugin Test
#
#\**********************************************************/

set(PLUGIN_NAME "PluginTest")
set(PLUGIN_PREFIX "PTE")
set(COMPANY_NAME "CMU")

# ActiveX constants:
set(FBTYPELIB_NAME PluginTestLib)
set(FBTYPELIB_DESC "PluginTest 1.0 Type Library")
set(IFBControl_DESC "PluginTest Control Interface")
set(FBControl_DESC "PluginTest Control Class")
set(IFBComJavascriptObject_DESC "PluginTest IComJavascriptObject Interface")
set(FBComJavascriptObject_DESC "PluginTest ComJavascriptObject Class")
set(IFBComEventSource_DESC "PluginTest IFBComEventSource Interface")
set(AXVERSION_NUM "1")

# NOTE: THESE GUIDS *MUST* BE UNIQUE TO YOUR PLUGIN/ACTIVEX CONTROL!  YES, ALL OF THEM!
set(FBTYPELIB_GUID 9b5fe355-7ebc-54b1-ad90-589996e2677c)
set(IFBControl_GUID e7e88ab9-bd0b-5b2b-8d7d-bf0a49b10233)
set(FBControl_GUID 019f2653-aab0-58bf-93be-d067d2acfe84)
set(IFBComJavascriptObject_GUID c651287b-9f69-5c32-9767-171e94c02c04)
set(FBComJavascriptObject_GUID 5aa742cd-a2cb-58fd-ae1c-1faeb26a17a4)
set(IFBComEventSource_GUID 8c94e5f9-5156-5c0c-b502-367ef9c224a9)
if ( FB_PLATFORM_ARCH_32 )
    set(FBControl_WixUpgradeCode_GUID c9d8c3de-129a-5f29-94d8-3ee81a9631ba)
else ( FB_PLATFORM_ARCH_32 )
    set(FBControl_WixUpgradeCode_GUID 4d3b3fd8-310d-55c5-bda0-35cc6735133b)
endif ( FB_PLATFORM_ARCH_32 )

# these are the pieces that are relevant to using it from Javascript
set(ACTIVEX_PROGID "CMU.PluginTest")
if ( FB_PLATFORM_ARCH_32 )
    set(MOZILLA_PLUGINID "cmu.com/PluginTest")  # No 32bit postfix to maintain backward compatability.
else ( FB_PLATFORM_ARCH_32 )
    set(MOZILLA_PLUGINID "cmu.com/PluginTest_${FB_PLATFORM_ARCH_NAME}")
endif ( FB_PLATFORM_ARCH_32 )

# strings
set(FBSTRING_CompanyName "CMU")
set(FBSTRING_PluginDescription "Test Plugin of Firebreath")
set(FBSTRING_PLUGIN_VERSION "1.0.0.0")
set(FBSTRING_LegalCopyright "Copyright 2014 CMU")
set(FBSTRING_PluginFileName "np${PLUGIN_NAME}")
set(FBSTRING_ProductName "Plugin Test")
set(FBSTRING_FileExtents "")
if ( FB_PLATFORM_ARCH_32 )
    set(FBSTRING_PluginName "Plugin Test")  # No 32bit postfix to maintain backward compatability.
else ( FB_PLATFORM_ARCH_32 )
    set(FBSTRING_PluginName "Plugin Test_${FB_PLATFORM_ARCH_NAME}")
endif ( FB_PLATFORM_ARCH_32 )
set(FBSTRING_MIMEType "application/x-plugintest")

# Uncomment this next line if you're not planning on your plugin doing
# any drawing:

#set (FB_GUI_DISABLED 1)

# Mac plugin settings. If your plugin does not draw, set these all to 0
set(FBMAC_USE_QUICKDRAW 0)
set(FBMAC_USE_CARBON 1)
set(FBMAC_USE_COCOA 1)
set(FBMAC_USE_COREGRAPHICS 1)
set(FBMAC_USE_COREANIMATION 0)
set(FBMAC_USE_INVALIDATINGCOREANIMATION 0)

# If you want to register per-machine on Windows, uncomment this line
#set (FB_ATLREG_MACHINEWIDE 1)
