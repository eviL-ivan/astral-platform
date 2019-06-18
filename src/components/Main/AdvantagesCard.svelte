<script>
  export let text;
  export let Icon;
</script>

<style>
  .service-card-wrapper {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: flex-start;
    margin: 36px 50px;
    width: calc((100% - 70px) / 3);
  }
  .service-icon {
    width: 131px;
    height: 131px;
    background: white;
    margin: 1em;
    border-radius: 50%;
  }
  .service-text {
    font-size: 24px;
  }
</style>

<div class="service-card-wrapper">
  <div class="service-icon">
    <Icon />
  </div>
  <div class="service-text">{text}</div>
</div>
