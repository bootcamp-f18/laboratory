<template>
    <button class="btn" v-bind:class="colorclass" v-on:click="count++">
        You clicked me {{ count }} time{{ count == 1 ? "" : "s" }}.
    </button>
</template>
<script>
    module.exports = {
        props: ['colorclass'],

        data: function () {

            return {
                count: 0
            }
        }
    };
</script>
