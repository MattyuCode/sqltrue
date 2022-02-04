document.addEventListener('DOMContentLoaded', () => {

    const codeBlock = document.getElementById('code');
    const codeSql = document.getElementById('sql');
    const copyButton = document.getElementById('copy-button');
    const copySql = document.querySelector('.copy-sql');
    const copySuccess = document.getElementById('copy-success');

    const copyTextHandler = () => {
        const text = codeBlock.innerText;

        navigator.clipboard.writeText(text).then(
            () => {
                copyButton.innerHTML = "Copiado!";
                setTimeout(() => {
                    copyButton.innerHTML = "Copiar";
                }, 1000);
            },
            () => {
                console.log('Error writing to the clipboard');
            }
        );
    };

    const copyMysql = () => {
        const  textsql = codeSql.innerText;

        navigator.clipboard.writeText(textsql).then(
            () => {
                copySql.innerHTML = "Copiado!";
                setTimeout(() => {
                    copySql.innerHTML = "Copiar";
                }, 1000);
            },
            () => {
                console.log('Error writing to the clipboard');
            }
        );
    };

    copyButton.addEventListener('click', copyTextHandler);
    copySql.addEventListener('click', copyMysql);
});