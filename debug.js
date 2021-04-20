const fs = require('fs');

const _MAX_LENGTH = 20;

for(let i = 1; i <= _MAX_LENGTH; i += 1) {
  fs.writeFileSync(`desafio${i}.sql`,"SELECT * FROM hr.countries;");
}
