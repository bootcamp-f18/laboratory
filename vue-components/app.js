Vue.component('sample', require("./Sample.vue"));

let app1 = new Vue({

    el: "#app1",

    data: {
        message: "How are you today?"
    },

    methods: {

    }

});

let app2 = new Vue({

    el: "#app2"

});
