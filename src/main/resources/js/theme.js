var currentTheme = localStorage.getItem('theme') || 'fishpi';
if (currentTheme) {
  document.documentElement.setAttribute('data-theme', currentTheme);
}

Vue.createApp({
  setup() {
    const theme = Vue.ref(currentTheme);
    const themeList = Vue.reactive([
      'fishpi',
      'light', 
      'dark', //
      'emerald', 
      'cyberpunk',
      'valentine',
      'halloween',//
      'forest', //
      'dracula', //
      'business', //
      'lemonade', 
      'night', //
      'coffee', //
      'winter', 
    ]);
    function setTheme(t) {
      theme.value = t;
      document.documentElement.setAttribute('data-theme', t);
      localStorage.setItem('theme', t);
      const darkTheme = ['dark', 'halloween', 'forest', 'dracula', 'business', 'night', 'coffee'];
      const isDarkTheme = darkTheme.includes(document.documentElement.getAttribute('data-theme'));
      Vditor.setCodeTheme(isDarkTheme ? 'github-dark' : 'github')
    }
    return {
      themeList,
      currentTheme: theme,
      setTheme
    }
  }
}).mount('#theme-menu')