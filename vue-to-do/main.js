Vue.component('todoitem', {

    props: ['todotext'],

    template: '<p>{{ todotext }}</p>'

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
