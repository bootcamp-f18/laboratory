var expect = require('chai').expect;
import { mount } from '@vue/test-utils';

var Sample = require('../Sample.vue');

describe("The Sample component", function() {

    var component;
    var initialContent = "You clicked me 0 times.";
    var incrementContent = "You clicked me 1 time.";

    beforeEach(function() {
        component = mount(Sample);
    });

    it("renders a button", function() {
        expect(component.contains('button')).to.be.true;
    });

    it("display the counter in the button", function() {
        var button = component.find('button');
        expect(button.html()).to.contain(initialContent);
    });

    it("colorclass prop is bound to the button class", function() {
        component.setProps({ colorclass: 'test-class' });
        expect(component.classes()).to.contain('test-class');
    });

    it("increments the counter when the button is clicked", function() {
        component.find('button').trigger('click');
        expect(component.vm.count).to.equal(1);
        expect(component.find('button').html()).to.contain(incrementContent);
    });

    it("does not increment another Sample component's counter", function() {
        var otherComponent = mount(Sample);
        expect(component.find('button').html()).to.contain(initialContent);
        expect(otherComponent.find('button').html()).to.contain(initialContent);

        component.find('button').trigger('click');
        expect(component.find('button').html()).to.contain(incrementContent);
        expect(otherComponent.find('button').html()).to.contain(initialContent);
    });
});
