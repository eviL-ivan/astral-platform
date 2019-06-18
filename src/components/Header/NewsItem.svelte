<script>
  export let date;
  export let text;
</script>

<style>
  .wrapper-news-item {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    word-break: break-word;
    flex-wrap: wrap;
    border-left: 3px solid #4e8be6;
    color: #fff;
    margin: 35px;
    max-width: 300px;
    padding: 5px 10px;
  }
  .news-date {
    opacity: 0.7;
    font-size: 14px;
    margin-bottom: 8px;
  }
  .news-text {
    font-size: 16px;
  }
</style>

<div class="wrapper-news-item">
  <div class="news-date">{date}</div>
  <div class="news-text">{text}</div>
</div>
