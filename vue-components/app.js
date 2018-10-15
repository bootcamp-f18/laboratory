Vue.component('sample', {

    props: ['colorclass'],

    data: function () {

        return {
            count: 0
        }
    },

    template: '<button class="btn" v-bind:class="colorclass" v-on:click="count++">You clicked me {{ count }} time{{ count == 1 ? "" : "s" }}.</button>'

});

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
