const odbc = require('odbc');

async function queryFoxPro() {
    const connection = await odbc.connect('DSN=TMSS;');
    const result = await connection.query('SELECT * FROM easysoc.dbo.SALES');
    console.log(result);
}

queryFoxPro().catch(err => console.error(err));
