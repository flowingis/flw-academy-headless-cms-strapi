module.exports = ({ env }) => ({
  connection: {
    client: 'postgres',
    connection: {
      host: env('DATABASE_HOST', 'postgres_db'),
      port: env.int('DATABASE_PORT', 5432),
      database: env('DATABASE_NAME', 'cms'),
      user: env('DATABASE_USERNAME', 'cms-admin'),
      password: env('DATABASE_PASSWORD', 'cms-admin-password'),
      ssl: env.bool('DATABASE_SSL', false),
    },
  },
});
