module.exports = {
  purge: {
    enabled: process.env.NODE_ENV === 'production',
    mode: 'all',
    content: [
      '../src/**/*.re',
      '../public/index.html'
    ],
  },
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var'],
      },
    },
  },
  variants: {},
  plugins: [],
}