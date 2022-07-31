let comment = document.getElementById('commentBtnjs')
let comments = document.getElementById("commentsContainerjs")


comment.addEventListener('click', () => {
    comments.classList.toggle('active')
});