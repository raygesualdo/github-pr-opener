package main

import (
	"fmt"
	"os"
	"bufio"
	"strings"
	"regexp"
	"os/exec"
)

func main() {
	re, _ := regexp.Compile("http.*")
	scanner := bufio.NewScanner(os.Stdin)

	for scanner.Scan() {
		line := scanner.Text()
		fmt.Println(line)
		
		if (strings.Contains(line, "pull/new")) {
			match := re.FindString(line)
			cmd := fmt.Sprintf("open %s", match)
			exec.Command("sh", "-c", cmd).Output()
		}
	}
}
