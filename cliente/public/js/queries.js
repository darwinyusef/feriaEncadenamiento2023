baseURL = 'https://aquicreamos.com/services-feria/api'
axios.defaults.headers.post['Content-Type'] = 'application/json;charset=utf-8';
axios.defaults.headers.post['Access-Control-Allow-Origin'] = '*';

async function getQuery(url) {
    return await axios({
        method: "get",
        baseURL: baseURL,
        url: url,
        timeout: 1000,
        responseType: 'json',
        maxRedirects: 5,
    }).catch(function (error) {
        let status = error.response.data.type;
        if (status == 'error') {
            console.log(error.response.data.message);
        }
    });
}

async function putQuery(url, data) {
    return await axios({
        method: "put",
        url: url,
        baseURL: baseURL,
        data: data,
        timeout: 1000,
        responseType: 'json',
        maxRedirects: 5,
    }).catch(function (error) {
        let status = error.response.data.type;
        if (status == 'error') {
            console.log(error.response.data.message);
        }
    });
}


async function postQuery(url, data) {
    return await axios({
        method: "post",
        url: url,
        baseURL: baseURL,
        data: data,
        timeout: 1000,
        responseType: 'json',
        maxRedirects: 5,
    }).catch(function (error) {
        let status = error.response.data.type;
        if (status == 'error') {
            console.log(error.response.data.message);
        }
    });
}


async function deleteQuery(url) {
    return await axios({
        method: "delete",
        baseURL: baseURL,
        url: url,
        timeout: 1000,
    }).catch(function (error) {
        let status = error.response.data.type;
        if (status == 'error') {
            console.log(error.response.data.message);
        }
    });
}
