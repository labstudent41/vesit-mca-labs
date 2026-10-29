// Program to get OS info

const { log } = require("console");
const os = require("os");

log("\n# OS Info\n");
log("Platform: ", os.platform());
log("Release: ", os.release());
log("Architecture: ", os.arch());
log("Host Name: ", os.hostname());
log("Uptime: ", os.uptime());
