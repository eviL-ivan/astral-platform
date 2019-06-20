<script>
  import { onMount } from "svelte";
  import FilePlaceholder from "./FilePlaceholder.svelte";
  export let signData;
  onMount(() => {
    const reel = document.getElementById("reel");
    const tab1 = document.getElementById("tab1");
    const tab2 = document.getElementById("tab2");
  });

  const slideLeft = e => {
    tab2.classList.remove("active");
    tab1.classList.add("active");
    reel.style.transform = "translateX(0%)";
  };

  const slideRight = e => {
    tab1.classList.remove("active");
    tab2.classList.add("active");
    reel.style.transform = "translateX(-50%)";
  };
</script>

<style>
  .tab_wrapper {
    display: flex;
    flex-direction: column;
    background: white;
    overflow: hidden;
  }
  .tab_wrapper header {
    width: 100%;
    border-radius: 10px 10px 0 0;
    display: flex;
    flex-direction: column;
  }
  .tab_wrapper header nav {
    width: 100%;
    height: 60%;
    display: flex;
    position: relative;
  }
  .tab_wrapper header nav .tab {
    width: 50%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
    margin-bottom: 15px;
  }
  .tab_wrapper header nav .indicator {
    width: 50%;
    height: 3px;
    position: absolute;
    bottom: 0;
    background: #2196f3;
    transition: 0.3s ease;
  }
  .tab_wrapper main {
    flex: 1;
    width: 200%;
    height: 100%;
  }
  .tab_wrapper main .tab_reel {
    width: 100%;
    display: flex;
    justify-content: space-between;
    transition: 0.5s cubic-bezier(0.16, 1, 0.29, 0.99);
  }
  .tab_wrapper main .tab_reel .tab_panel1,
  .tab_wrapper main .tab_reel .tab_panel2 {
    width: 50%;
  }

  .tab_wrapper main .card {
    height: auto;
    padding: 10px;
    margin-bottom: 0.7rem;
    border-radius: 6px;
    background: white;
    box-shadow: 0px 5px 15px rgba(100, 149, 237, 0.3);
  }
  .tab_wrapper main .card_large figure {
    height: 500px;
    margin: 0;
    background: #bfd3f8;
  }
  .tab_wrapper main .card_list figure {
    width: 40px;
    height: 40px;
    border-radius: 120px;
    background: #bfd3f8;
    margin: 0;
  }
  .tab1.active ~ .indicator {
    left: 0;
  }

  .tab2.active ~ .indicator {
    left: 50%;
  }
  .sign {
    word-break: break-word;
    max-height: 500px;
    overflow: auto;
    padding: 20px;
  }

  .sign::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
    background-color: #f5f5f5;
  }

  .sign::-webkit-scrollbar {
    width: 5px;
    background-color: #f5f5f5;
  }

  .sign::-webkit-scrollbar-thumb {
    background-color: #0989e3;
  }
</style>

<div class="tab_wrapper">
  <header>
    <nav>
      <div on:click={slideLeft} id="tab1" class="tab tab1 active">Описание</div>
      <div class="tab tab2" on:click={slideRight} id="tab2">
        Спецификация API
      </div>
      <div class="indicator" />
    </nav>
  </header>
  <main>
    <div class="tab_reel" id="reel">
      <div class="tab_panel1">
        Таким образом реализация намеченных плановых заданий позволяет выполнять
        важные задания по разработке новых предложений. Таким образом постоянный
        количественный рост и сфера нашей активности требуют от нас анализа
        дальнейших направлений развития. Разнообразный и богатый опыт
        сложившаяся структура организации играет важную роль в формировании
        систем массового участия. Равным образом рамки и место обучения кадров
        представляет собой интересный эксперимент проверки направлений
        прогрессивного развития. Идейные соображения высшего порядка, а также
        постоянный количественный рост и сфера нашей активности позволяет
        выполнять важные задания по разработке системы обучения кадров,
        соответствует насущным потребностям. Равным образом сложившаяся
        структура организации позволяет оценить значение соответствующий условий
        активизации. С другой стороны начало повседневной работы по формированию
        позиции требуют определения и уточнения соответствующий условий
        активизации. Разнообразный и богатый опыт консультация с широким активом
        в значительной степени обуславливает создание систем массового участия.
        Равным образом постоянный количественный рост и сфера нашей активности
        влечет за собой процесс внедрения и модернизации направлений
        прогрессивного развития.
      </div>
      <div class="tab_panel2">
        <FilePlaceholder />
      </div>
    </div>
  </main>
</div>
