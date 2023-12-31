import { defineClientConfig } from "@vuepress/client";

export default defineClientConfig({
    enhance({ app, router, siteData }) {
        router.afterEach((to) => {
            if (to.path === "/") {
                router.push("/cfp");
            }
        });
    },
    setup() {},
    rootComponents: [],
});
