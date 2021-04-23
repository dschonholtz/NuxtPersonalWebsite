import Vue from 'vue';
import VueGtag from 'vue-gtag';

export default ({ app }) => {
    const getGDPR = localStorage.getItem('GDPR:accepted');

    Vue.use(VueGtag, {
        config: { id:  process.env.G_ANALYTICS },
        bootstrap: getGDPR === 'true',
        appName: 'DailyProgress',
        enabled: getGDPR === 'true',
        pageTrackerScreenviewEnabled: true
    }, 
    app.router
    );
}