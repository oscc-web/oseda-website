import { defineUserConfig } from "vuepress";
import theme from "./theme.js";

export default defineUserConfig({
    base: "/",
    locales: {
        "/": {
            lang: "zh-CN",
            title: "开源EDA",
            description: "开源EDA的官方网站",
        }
    },
    theme
});
