

configuration Tester
{
    param 
    ( 
        [Parameter(Mandatory = $true)]
        [string] $AdminUsername
    );

    Import-DscResource -ModuleName PSDesiredStateConfiguration,
        @{ModuleName="xNetworking";ModuleVersion="5.5.0.0"},
        @{ModuleName="xPSDesiredStateConfiguration";ModuleVersion="8.0.0.0"};

    $backgroundColor = "184 40 50";

    node localhost
    {
        File "tools"
        {
            Ensure = "Present"
            Type = "Directory"
            DestinationPath = "C:\tools"
        }
    }
}

