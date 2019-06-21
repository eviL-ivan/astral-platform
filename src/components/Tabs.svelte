<script>
  import { onMount } from "svelte";
  import FilePlaceholder from "./FilePlaceholder.svelte";
  onMount(() => {
    const reel = document.getElementById("reel");
    const tab1 = document.getElementById("tab1");
    const tab2 = document.getElementById("tab2");
  });

  const slideLeft = e => {
    tab2.classList.remove("activeTab");
    tab1.classList.add("activeTab");
    reel.style.transform = "translateX(0%)";
  };

  const slideRight = e => {
    tab1.classList.remove("activeTab");
    tab2.classList.add("activeTab");
    reel.style.transform = "translateX(-50%)";
  };
</script>

<style>
  .tab_wrapper {
    display: flex;
    width: 40%;
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

  .tab1.activeTab ~ .indicator {
    left: 0;
  }

  .tab2.activeTab ~ .indicator {
    left: 50%;
  }
</style>

<div class="tab_wrapper">
  <header>
    <nav>
      <div on:click={slideLeft} id="tab1" class="tab tab1 activeTab">Описание</div>
      <div class="tab tab2" on:click={slideRight} id="tab2">
        Спецификация API
      </div>
      <div class="indicator" />
    </nav>
  </header>
</div>
