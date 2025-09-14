$('body').fadeOut(0);

/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/
window.addEventListener('message', function(event) {
  switch (event.data.action) {
    case 'quests':
        break;
    default:
        break;
    }
});
/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/
function NoMouse(s) {
    $('body').css('pointer-events', 'none');
    setTimeout(function() {
      $('body').css('pointer-events', 'auto');
    }, s * 1000);
}
/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/
function NowAudio(src, volume) {
    audio = new Audio(src);
    audio.volume = volume
    audio.play()
}
/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/
function InteractClose(event, sound) {
    if (event.key === 'Escape' && $('body').is(':visible')) {
        setTimeout(function() {
            tgt = {}
            ResetBody()
            $.post('https://ricx_script/ricx_script:close');  
        }, 0.25 * 1000);
        if (sound) {NowAudio(sound,0.5)}
    }
}
/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/
function ResetBody() {
    $('body').html('');
    $('body').off('keydown.interactClose');
    $('body').fadeOut(0);
}