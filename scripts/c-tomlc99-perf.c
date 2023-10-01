#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include "toml.h"

static void fatal(const char *msg, const char *msg1) {
  fprintf(stderr, "ERROR: %s%s\n", msg, msg1 ? msg1 : "");
  exit(1);
}

int main(int argc, const char *argv[]) {
  FILE *fp = fopen(argv[1], "r");
  if (!fp)
    fatal("cannot open sample.toml - ", strerror(errno));

  char errbuf[200];
  toml_table_t *conf = toml_parse_file(fp, errbuf, sizeof(errbuf));
  fclose(fp);
  if (!conf)
    fatal("cannot parse - ", errbuf);

  toml_free(conf);
  return 0;
}
