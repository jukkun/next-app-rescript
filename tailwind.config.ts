import type { Config } from 'tailwindcss'

const config: Config = {
  content: ['./src/app/**/*.{js,ts,jsx,tsx,res,mdx}'],
  theme: {
    extend: {
      container: {
        center: true,
      },
    },
  },
  plugins: [],
}
export default config
