<script>
  import PlaceholderImage from "../../static/PlaceholderImage.svelte";
</script>

<style>
  .placeholder-wrapper {
    display: flex;
    height: 100%;
  }
  .placeholder-container {
    display: flex;
    align-items: center;
    flex-direction: column;
    justify-content: center;
    flex: 1;
  }
  .placeholder-image {
    margin-bottom: 30px;
  }
  .placeholder-title {
    width: 50%;
    font-size: 18px;
    font-weight: 600;
    margin-bottom: 10px;
    text-align: center;
  }
  .placeholder-text {
    width: 50%;
    font-weight: 16px;
    word-break: break-word;
    text-align: center;
  }
</style>

<div class="placeholder-wrapper">
  <div class="placeholder-container">
    <div class="placeholder-image">
      <PlaceholderImage />
    </div>
    <div class="placeholder-title">Контента нет</div>
    <div class="placeholder-text">
      Пока нет контента, но скоро он обязательно появится :)
    </div>
  </div>
</div>
