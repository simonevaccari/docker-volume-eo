
# Docker for populating a volume with EO data

## Build this docker image

```console
docker build -t volume-eo:latest .
```

## Create a docker volume and populate it with a Sentinel-1

Create a docker volume called `eo-data` with: 

```console
docker volume create --name eo-data
```

Run the command below to populate it with the Sentinel-1 GRD product with identifier S1A_IW_GRDH_1SDV_20201228T170552_20201228T170617_035889_0433FB_D8C7:

```console
docker run --rm -v eo-data:/data volume-eo:latest S1A_IW_GRDH_1SDV_20201228T170552_20201228T170617_035889_0433FB_D8C7
```

You'll be asked for you scihub credentials.

## Use a credentials file

Create a JSON file called `usersettings.json` and add:

```json
{
  "Credentials": {
    "scihub": {
      "AuthType": "Basic",
      "UriPrefix": "https://scihub.copernicus.eu/",
      "Username": "<your username>",
      "Password": "<your password>"
    }
  }
}
```

Then run: 

```console
docker run --rm -it  -v eo-data:/data -v $PWD/settings/usersettings.json:/root/.config/Stars/usersettings.json volume-eo:latest S1A_IW_GRDH_1SDV_20201228T170552_20201228T170617_035889_0433FB_D8C7
```

Now you have a local docker volume with EO data that can be mounted on other docker containers

