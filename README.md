
# Docker for populating a volume with EO data

```json
{
  "Credentials": {
    "scihub": {
      "AuthType": "Basic",
      "UriPrefix": "https://scihub.copernicus.eu/",
      "Username": "",
      "Password": ""
    }
  }
}
```

Example:

```console
docker run --rm -it  -v data:/data -v $PWD/settings/usersettings.json:/root/.config/Stars/usersettings.json volume-eo:latest S1A_IW_GRDH_1SDV_20201228T170552_20201228T170617_035889_0433FB_D8C7
```