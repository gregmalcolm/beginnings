require 'rails_helper'


describe ApplicationHelper do
  describe "#alert_type_from_flash" do
    context "for an error flash" do
      subject { helper.alert_type_from_flash("error") }
      it { expect(subject).to be == "alert-danger"}
    end
    context "for a alert flash" do
      subject { helper.alert_type_from_flash("alert") }
      it { expect(subject).to be == "alert-warning"}
    end
    context "for a success flash" do
      subject { helper.alert_type_from_flash("success") }
      it { expect(subject).to be == "alert-success"}
    end
    context "for a notice flash" do
      subject { helper.alert_type_from_flash("notice") }
      it { expect(subject).to be == "alert-info"}
    end
  end
end
