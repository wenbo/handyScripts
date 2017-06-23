new Vue({
    el: '#transition-demo',
    data: {
        input: '',
        validationInput: false
    },
    filters: {
        validator: function(value) {
            if (value.length > 4) {
                this.validationInput = true;
            } else {
                this.validationInput = false;
            }
            return value;
        }
    }
});
