document.addEventListener('DOMContentLoaded', ()=>{

    const bt = document.querySelectorAll('.dropbtn');
    
    bt.forEach(function(i){
        i.addEventListener('click', function(event){
            let target = event.target;
            i.innerHTML == 'Переглянути спеціалістів' ? i.innerHTML = 'Сховати список'  :  i.innerHTML = 'Переглянути спеціалістів';
    
            const list = document.querySelectorAll('.dropdown-content');
            list.forEach(function(j){
                if(target.nextElementSibling == j){
                    j.classList.toggle('active');
                }
            });
        });
    });
});