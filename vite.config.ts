import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  build: {
    //create build directory if it doesn't exist
    outDir: 'client/dist',
    //empty the build directory before building
    emptyOutDir: true,  
    //set the base path to /client
    rollupOptions: {
      output: {
        entryFileNames: 'bundle.js',
        chunkFileNames: 'bundle.js',
        assetFileNames: 'bundle.[ext]',
      },
    },
  },
})
