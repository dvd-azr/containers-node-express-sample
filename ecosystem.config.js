module.exports = [{
  script: 'app.js',
  name: 'docker-node-express-sample-app',
  exec_mode: 'cluster',
  instances: 1
}]
log(process.env.PM2_PUBLIC_KEY)
