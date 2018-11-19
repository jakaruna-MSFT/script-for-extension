[DSCLocalConfigurationManager()]

configuration LocalSettings

{
    param 

    ( 
       
        [Parameter(Mandatory = $false)]

        [int] $RefreshFrequencyMins,
       
        [Parameter(Mandatory = $true)]

        [string] $AdminUsername

    );
    node localhost

    {
        Settings
        {
            RefreshFrequencyMins = $RefreshFrequencyMins
        }

    }
}

configuration Tester

{

    param 

    ( 

        [Parameter(Mandatory = $false)]

        [int] $RefreshFrequencyMins,
       
        [Parameter(Mandatory = $true)]

        [string] $AdminUsername

    );


    node localhost

    {

        File "tools"
        {

            Ensure = "Present"

            DestinationPath = "C:\tools.txt"

            Contents = "$AdminUsername"
        }

    }

}
