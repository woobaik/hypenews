document.addEventListener("turbolinks:load", function() {
    const replyDeleteBtns = document.querySelectorAll('.reply-delete');
    replyDeleteBtns.forEach(function(btn) {
        btn.addEventListener('click', function() {
            btn.parentElement.parentElement.remove()
        })
    })
})