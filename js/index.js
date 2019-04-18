#!/usr/bin/env node

main()

async function main() {
  const { execSync } = require('child_process')
  const getStdin = require('get-stdin')

  ;(await getStdin()).split('\n').forEach(line => {
    console.log(line)
    if (line.includes('pull/new')) {
      const [match] = line.match(/http.*/)
      execSync(`open ${match}`)
    }
  })
}
