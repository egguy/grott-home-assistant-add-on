# Home Assistant Add-on: Grott - The Growatt inverter monitor

## Installation

Follow these steps to get the add-on installed on your system:

1. Navigate in your Home Assistant frontend to **Supervisor** -> **Add-on Store**.
2. Find the "Grott" add-on and click it.
3. Click on the "INSTALL" button.

## How to use

The add-on has a couple of options available. To get the add-on running:

1. Start the add-on.
2. Have some patience and wait a couple of minutes.
3. Check the add-on log output to see the result.

## Add-on configuration

All options from grott are available as options in this add-on. They need to follow the naming convention of the environment variables. Eg:  

```yaml
 gmode: proxy
 gnomqtt: False
 gmqttip: 127.0.0.1
 gmqttport: 5288
 gmqttauth: False
 gmqtttopic: energy/grott
 gmqttuser: user
 gmqttpassword: password
```
