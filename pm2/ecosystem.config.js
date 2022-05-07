module.exports = {
  apps : [{
    name   : "cncjs",
    script : "/usr/bin/cncjs",
    args: "--port 8000",
    watch: true
  },
  {
    name: "keyboardreader",
    script: "/home/pi/cncjs-pendant-keyboardreader/bin/cncjs-pendant-keyboardreader",
    args: "--port /dev/ttyACM0 --device /dev/hidraw1",
    watch: true
  },
  {
    name: "node-file-manager",
    script: "/home/pi/node-file-manager/lib/index.js",
    args: "-p 8080 -d /home/pi/gcode",
    watch: true
  }
  ]
}
