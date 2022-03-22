module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '2ca443bfdc4d1e3032b84038512ce5ad'),
  },
});
