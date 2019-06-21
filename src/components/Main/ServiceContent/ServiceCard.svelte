<script>
  import { navigate } from "svelte-routing";

  export let text;
  export let Icon;

  let goToSelectService = () => {
    navigate("/content");
  };
</script>

<style>
  .service-card-wrapper {
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: center;
    cursor: pointer;
    width: calc((100% - 20px) / 5);
  }
  .service-card-wrapper:hover .service-icon {
    background-color: #efefef;
  }
  .service-icon {
    width: 131px;
    height: 131px;
    background: white;
    margin: 1em;
    border-radius: 50%;
  }
  .service-text {
    font-size: 14px;
    text-align: center;
  }
</style>

<div class="service-card-wrapper" on:click={goToSelectService}>
  <div class="service-icon">
    <Icon />
  </div>
  <div class="service-text">{text}</div>
</div>
