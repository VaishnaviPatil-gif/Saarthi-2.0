module.exports = {
  apps: [
    {
      name: 'saarthi-api',
      script: 'server/index.js',
      exec_mode: 'fork',
      instances: 1,
      watch: false,
      env: {
        NODE_ENV: 'development'
      },
      env_production: {
        NODE_ENV: 'production'
      },
      // Graceful restart settings
      max_memory_restart: '300M',
      restart_delay: 2000,
      // Log files (PM2 creates a logs folder automatically if not provided)
      log_date_format: 'YYYY-MM-DD HH:mm:ss'
    }
  ]
};
