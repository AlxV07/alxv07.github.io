const nav = `<nav>
    <div class="nav-left nav-a"><a class="nav-a" style="margin: 0; padding: 0" href="/">Alexander Kai Chen</a></div>
    <div class="nav-center">
        <a class="nav-a" href="/#about" >About</a>
        <a class="nav-a" href="/#accomplishments">Accomplishments</a>
        <a class="nav-a" href="/#activities">Activities</a>
        <a class="nav-a" href="/#connect">Connect</a>
        <a class="nav-a" href="/#blog">Blog</a>
    </div>
    <a class="nav-a nav-right" href="#">To Top (↑)</a>
</nav>`

document.addEventListener('DOMContentLoaded', () => {
    document.body.insertAdjacentHTML('afterbegin', nav);
    const gaScript = document.createElement('script');
    gaScript.async = true;
    gaScript.src = 'https://www.googletagmanager.com/gtag/js?id=G-J8RSL65KCL';
    document.head.appendChild(gaScript);
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'G-J8RSL65KCL');
})
