import SwiftyToolz

func generateRootPage(siteFolder: SiteFolder) throws
{
    let script =
    """
    // Toggle Screenshots Between Light and Dark
    function toggleLightMode(idString)
    {
        document.getElementById(idString).classList.toggle("light-mode");
        //console.log(document.getElementById("screen-shot-1").classList);
    }
    """
    
    try generateStandardPage(inFolderPath: "",
                             withRootPath: "",
                             pageCSSFolderPath: "app/",
                             script: script,
                             siteFolder: siteFolder)
}

func generatePrivacyPage(siteFolder: SiteFolder) throws
{
    try generateStandardPage(inFolderPath: "privacy-policy/",
                             withRootPath: "../",
                             siteFolder: siteFolder)
}

func generateImprintPage(siteFolder: SiteFolder) throws
{
    try generateStandardPage(inFolderPath: "imprint/",
                             withRootPath: "../",
                             siteFolder: siteFolder)
}
