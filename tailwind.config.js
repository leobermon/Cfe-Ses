module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        "cc-primary": "#FFFFFF",
        "cc-secondary": "#F9FAFB",
        "cc-official": "#00804f",
        "gabineteColor": "#d2cdc0",
        "gabineteText": "#dbd9d0",
        "morado":"#9d03fc"
      },
    },
    fontFamily: {
      Roboto: ["Roboto, sans-serif"],
      fontSans: ["font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji"]
    },
    container: {
      padding: "2rem",
      center: true,
    },
    screens: {
      sm: "640px",
      md: "768px", 
    },
  },
  plugins: [],
};