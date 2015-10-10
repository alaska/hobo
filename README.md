# hobo

This is where I keep simple vagrant configurations I use for local development and testing. You might find them useful. Or not.

## Use

```bash
$ cd <whichever machine>
$ vagrant up
```

## Warning

These images are intended for local development only. Hence the `config.vm.network "private_network"`. I cannot stress enough that these images are **COMPLETELY INSECURE** by design, because they're for testing and mocking up and are not intended for production use. For srs.

## Todo
PRs very welcome!

- Add more services
- Something better than hard-coding to 10.0.0.0/24. Maybe Zeroconf?
- Document usage on each machine and any extensions and how to use them (if applicable)
- Use [Otto](https://ottoproject.io/) instead? ;)
