
angular.module('openspecimen')
  .directive('osInstitutes', function(AuthorizationService, Institute) {
    function loadInstitutes(filterOpts, searchTerm) {
      return Institute.query(angular.extend({name: searchTerm}, filterOpts || {})).then(
        function(result) {
          return result.map(function(institute) { return institute.name });
        }
      );
    };

    return {
      restrict: 'AE',

      scope: {
        ngModel    : '=',
        filterOpts : '=',
        placeholder: '@',
        onSelect   : '&',
      },

      replace: true,

      controller: function($scope) {
        $scope.searchInstitutes = function(searchTerm) {
          loadInstitutes($scope.filterOpts, searchTerm).then(
            function(institutes) {
              $scope.institutes = institutes;
              if (!searchTerm && institutes.length == 1 && $scope.autoSelect && !$scope.ngModel) {
                $scope.ngModel = $scope.multiple ? [institutes[0]] : institutes[0];
              }
            }
          );
        };
      },
  
      link: function(scope, element, attrs, ctrl) {
        scope.multiple   = attrs.hasOwnProperty('multiple');
        scope.autoSelect = attrs.hasOwnProperty('autoSelect');

        if (!scope.ngModel && scope.multiple) {
          scope.ngModel = [];
        }
      },

      template: function(tElem, tAttrs) {
        var bodyAppend   = angular.isDefined(tAttrs.appendToBody) ? tAttrs.appendToBody : 'true';
        var tabable      = angular.isDefined(tAttrs.osTabable) ? tAttrs.osTabable : 'false';
        var multiple     = angular.isDefined(tAttrs.multiple) ? 'multiple' : '';
        var selectOption = angular.isDefined(tAttrs.multiple) ? '$item' : '$select.selected';
        var ngRequired   = angular.isDefined(tAttrs.ngRequired) ? 'ng-required="' + tAttrs.ngRequired + '"' : '';
        var mdInput      = tAttrs.mdType == 'true' ? 'os-md-input' : '';

        return '' +
          '<div class="os-select-container ' + mdInput + '">' +
            '<ui-select ' + multiple + ' ng-model="$parent.ngModel" reset-search-input="true"' +
              'on-select="onSelect({institute: $item})"' +
              ' append-to-body="' + bodyAppend + '" os-tabable="' + tabable + '" ' + ngRequired + '>' +
              '<ui-select-match placeholder="{{$parent.placeholder}}">' +
                '{{' + selectOption + '}}' +
              '</ui-select-match>' +
              '<ui-select-choices repeat="institute in institutes" ' +
                'refresh="searchInstitutes($select.search)" refresh-delay="750">' +
                '<span ng-bind-html="institute | highlight: $select.search"></span>' +
              '</ui-select-choices>' +
            '</ui-select>' +
          '</div>';
      }
    };
  });
