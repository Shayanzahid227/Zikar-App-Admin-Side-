import 'package:code_structure/core/others/base_view_model.dart';

class DashBoardViewModel extends BaseViewModel {
  int _selectedParent = 0;
  int _selectedChild = -1;
  int _expandedParent = -1;

  int get selectedParent => _selectedParent;
  int get selectedChild => _selectedChild;
  int get expandedParent => _expandedParent;

  void selectParent(int parentIndex) {
    if (_selectedParent != parentIndex || _selectedChild != -1) {
      _selectedParent = parentIndex;
      _selectedChild = -1;
      _expandedParent = parentIndex; // Expand the parent when selected
      notifyListeners();
    }
  }

  void selectChild(int parentIndex, int childIndex) {
    _selectedParent = parentIndex;
    _selectedChild = childIndex;
    _expandedParent = parentIndex; // Keep parent expanded
    notifyListeners();
  }

  void toggleExpansion(int parentIndex) {
    if (_expandedParent == parentIndex) {
      _expandedParent = -1;
    } else {
      _expandedParent = parentIndex;
    }
    notifyListeners();
  }

  bool isParentExpanded(int parentIndex) => _expandedParent == parentIndex;
  bool isChildSelected(int parentIndex, int childIndex) =>
      _selectedParent == parentIndex && _selectedChild == childIndex;
}
