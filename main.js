moment.locale('es');
var Questions = [];
function addQuestion(Question) {
    var id = Question.id;
    var question = Question.question;
    var answer = Question.answer;
    var accuracy = Question.accuracy ?
        `${(Question.accuracy * 100).toFixed(2)}% de precisión`:
        '';
    $('#questions').append(`
    <div class="preview-item border-bottom">
        <div class="preview-thumbnail">
        <div class="preview-icon bg-info rounded-circle">
            ${id}
        </div>
        </div>
        <div class="preview-item-content d-sm-flex flex-grow">
        <div class="flex-grow">
            <h6 class="preview-subject">${question}</h6>
            <p class="text-muted mb-0">${answer}</p>
        </div>
        <div class="mr-auto text-sm-right pt-2 pt-sm-0">
            <p class="text-muted">${accuracy}</p>
        </div>
        </div>
    </div>
    `);
}

function compareQuestions() {
    var input = $('#question-search').val();
    $('#questions').empty();
    if (input != '') {
        var delay = 0;
        var coincidences = 0;
        Questions.forEach(Question => {
            var question = Question.question;
            var result = gcompare(input, question);
            if (
                result.accuracy.moderate   
            ) {
                Question.accuracy = result.percent;
                addQuestion(Question)
                coincidences++;
            }
            delay+= result.delay;
        });
        $('#question-total').text(`${coincidences} resultados [${delay} milisegundos]`)
    } else {
        $('#question-total').text(`${Questions.length} resultados`);
        Questions.forEach(Question => {
            delete Question.accuracy;
            addQuestion(Question);
        })
    }
    
}

$(document).ready(function () {
    var request = {};
    request.review = 83;
    $.ajax({
        url: 'api/review/listOne',
        type: 'POST',
        dataType: 'JSON',
        headers: {
            'Accept': 'application/json',
			'Content-Type': 'application/json'
        },
        data: JSON.stringify(request),
        success: res => {
            $('#review-name').text(res.review.name);
            var date = moment(res.review.date, 'YYYY-MM-DD hh:mm:ss').fromNow();
            $('#review-date').text(`Publicado ${date}`);
            $('#review-views').text(`[${res.review.punctuation.views} visitas]`);
            $('#career').text(res.career.name);
            $('#semester').text(res.semester.name);
            $('#course').text(res.course.name);

            // Punctuations
            var likes = res.review.punctuation.likes;
            var dislikes = res.review.punctuation.dislikes;
            var totalLikeDislike = likes + dislikes;
            var likesPercent = (likes / totalLikeDislike * 100).toFixed(2);
            var shares = res.review.punctuation.shares;
            var views = res.review.punctuation.views;
            var sharesPercent = shares / views * 100;
            $('#punctuation-likes').text(`${likes} 'Me sirvió' de ${totalLikeDislike} calificaciones`);
            $('#punctuation-likes-percent').css('width', `${likesPercent}%`);
            $('#punctuation-shares').text(`${shares} compartidos de ${views} visitas`);
            $('#punctuation-shares-percent').css('width', `${sharesPercent}%`);

            // Questions & Answers
            var questions = res.review.data;
            $('#question-total').text(`${questions.length} resultados`);
            
            $('#questions').empty();
            questions.forEach(question => {
                Questions.push(question);
                addQuestion(question);
            });
        },
        error: e => {
            console.log(e);
        }
    })
})

$('#question-search').on('keyup', compareQuestions);