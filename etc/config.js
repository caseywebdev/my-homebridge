const ENV = process.env;

const config = {
  description: 'Make non-HomeKit things HomeKit-able.',
  bridge: {
    name: 'Homebridge',
    username: ENV.HOMEBRIDGE_USERNAME,
    port: 51826,
    pin: ENV.HOMEBRIDGE_PIN
  },
  accessories: [],
  platforms: [
    {
      platform: 'Nest',
      token: ENV.NEST_TOKEN,
      clientId: ENV.NEST_CLIENT_ID,
      clientSecret: ENV.NEST_CLIENT_SECRET,
      code: ENV.NEST_PIN_CODE
    },
    {
      platform: 'HarmonyHub',
      name: 'Harmony',
      ip_address: ENV.HARMONY_IP_ADDRESS
    }
  ]
};

process.stdout.write(JSON.stringify(config));
