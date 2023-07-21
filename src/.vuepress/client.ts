import { defineClientConfig } from "@vuepress/client";

export default defineClientConfig({
    enhance({ app, router, siteData }) {
        router.afterEach((to) => {
            console.log(to);
            if (to.path === "/") {
                router.push("/cfp");
            }
        });
    },
    setup() {},
    rootComponents: [],
});
