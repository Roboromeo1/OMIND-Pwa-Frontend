part of dashboard;

class DashboardController extends GetxController {
  final scafoldKey = GlobalKey<ScaffoldState>();

  final dataProfil = const UserProfileData(
    image: AssetImage(ImageRasterPath.man),
    name: "Aurelia",
    jobDesk: "Consultant",
  );

  final member = ["Avril Kimberly", "Michael Greg"];

  final dataTask = const TaskProgressData(totalTask: 5, totalCompleted: 1);
  var text1 = "My text data";

  final taskInProgress = [
    CardTaskData(
      label: "Clinical Management Course",
      jobDesk: "Career Progression",
      dueDate: "Implemented",
    ),
    CardTaskData(
      label: "Job Share",
      jobDesk: "Work Health and Safety",
      dueDate: "Implemented",
    ),
    CardTaskData(
      label: "Suggestions To Department",
      jobDesk: "Career Progression",
      dueDate: "Implemented",
    ),
  ];

  final weeklyTask = [
    ListTaskAssignedData(
      icon: const Icon(EvaIcons.people, color: Colors.blueGrey),
      label: "Problem 1",
      jobDesk: "Career Progression",
      assignTo: "Alex Ferguso",
      editDate: DateTime.now().add(-const Duration(hours: 2)),
    ),
    ListTaskAssignedData(
      icon: const Icon(EvaIcons.people, color: Colors.amber),
      label: "Problem 2",
      jobDesk: "Career Progression",
      assignTo: "Justin Beck",
      editDate: DateTime.now().add(-const Duration(days: 50)),
    ),
    const ListTaskAssignedData(
      icon: Icon(EvaIcons.heart, color: Colors.blue),
      label: "Problem 3 ",
      jobDesk: "Health",
    ),
    const ListTaskAssignedData(
      icon: Icon(EvaIcons.pieChart, color: Colors.redAccent),
      label: "Problem 4 ",
      jobDesk: "internal",
    ),
  ];

  final taskGroup = [
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 10)),
        label: "5 posts on instagram",
        jobdesk: "Marketing",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 11)),
        label: "Platform Concept",
        jobdesk: "Animation",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 5)),
        label: "UI UX Marketplace",
        jobdesk: "Design",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 6)),
        label: "Create Post For App",
        jobdesk: "Marketing",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 5)),
        label: "2 Posts on Facebook",
        jobdesk: "Marketing",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 6)),
        label: "Create Icon App",
        jobdesk: "Design",
      )
    ]
  ];

  void onPressedProfil() {}

  void onSelectedMainMenu(int index, SelectionButtonData value) {}
  void onSelectedTaskMenu(int index, String label) {}

  void searchTask(String value) {}

  void onPressedTask(int index, ListTaskAssignedData data) {}
  void onPressedAssignTask(int index, ListTaskAssignedData data) {}
  void onPressedMemberTask(int index, ListTaskAssignedData data) {}
  void onPressedCalendar() {}
  void onPressedTaskGroup(int index, ListTaskDateData data) {}

  void openDrawer() {
    if (scafoldKey.currentState != null) {
      scafoldKey.currentState!.openDrawer();
    }
  }
}
