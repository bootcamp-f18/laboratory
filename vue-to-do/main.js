Vue.component('todoitem', {

    props: ['todotext', 'todoindex'],

    methods: {

        recordclick: function() {
            this.$parent.removeTodo(this.todoindex);
        }

    },

    template: '<li class="list-group-item" v-on:click="recordclick();"><i class="far fa-trash-alt mr-3 text-danger"></i> {{ todotext }}</li>'

});

new Vue({

    el: "#app",

    data: {
        newTodoText: '',
        todos: []
    },

    methods: {

        addNewTodo: function () {

            // Add the new to-do item to todos
            this.todos.push(this.newTodoText);

            // Clear out text in input box
            this.newTodoText = '';


        },

        removeTodo: function (index) {

            // Remove item from todos array
            this.todos.splice(index, 1);

        }


    }

});
