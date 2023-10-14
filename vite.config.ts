import { defineConfig } from "vite";
import RubyPlugin from "vite-plugin-ruby";
import FullReload from "vite-plugin-full-reload";
import StimulusHMR from "vite-plugin-stimulus-hmr";

export default defineConfig({
  clearScreen: false,
  plugins: [
    RubyPlugin(),
    StimulusHMR(),
    FullReload(["config/routes.rb", "app/views/**/*"], { delay: 300 }),
  ],
  root: "./app/assets",
  build: {
    manifest: true,
    rollupOptions: {
      input: "/app/javascript/entrypoints/application.js",
    },
  },
});
