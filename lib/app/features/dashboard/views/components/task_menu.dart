part of dashboard;

class _TaskMenu extends StatelessWidget {
  const _TaskMenu({
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final Function(int index, String label) onSelected;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
