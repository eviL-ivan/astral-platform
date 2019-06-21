<script>
  export let date;
  export let title;
  export let text;
</script>

<style>
  .news-container {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: center;
    padding: 70px 0;
  }
  .news-date {
    font-size: 16px;
    opacity: 0.5;
    margin-bottom: 15px;
  }
  .news-title {
    font-weight: 500;
    font-size: 44px;
    color: #2e3e56;
    margin-bottom: 50px;
  }
  .news-text {
    font-size: 18px;
    color: #2e3e56;
    white-space: pre-wrap;
  }
</style>

<div class="news-container">
  <div class="news-date">{date}</div>
  <div class="news-title">{title}</div>
  <div class="news-text">{text}</div>
</div>
